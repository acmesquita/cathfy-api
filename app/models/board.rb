class Board < ApplicationRecord

    has_many :lists

    def start_lists
			List.create({
				title: 'Tarefas',
				creatable: true,
				board: self
			});
			
			List.create({
				title: 'Fazendo',
				board: self
			});
			
			List.create({
				title: 'Pausado',
				board: self
			});
			
			List.create({
				title: 'Concluído',
				done:true,
				board: self
			});
	end
end
